/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   birds.cpp                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/30 18:27:26 by mikim             #+#    #+#             */
/*   Updated: 2018/03/30 22:23:13 by mikim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/* ************************************************************************** */
/*                                                              Mingyun Kim   */
/*                                           https://www.github.com/mikim42   */
/* ************************************************************************** */

#include <iostream>
#include <fstream>
#include <string>
#include <limits>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/fcntl.h>
#include <sys/uio.h>
#include <unistd.h>

using namespace std;

inline void	main_console(void)
{
	cout << "[1] Create a project directory" << endl <<
			"[2] Exit" << endl;
}

inline void	lib_console(void)
{
	cout << "[1] Download library from git" << endl <<
			"[2] Copy library from computer" << endl <<
			"[3] Exit" << endl;
}

inline void	CINCLEAR(int type)
{
	if (cin.eof() || cin.fail())
	{
		cout << "\x1B[33m[+ Killed]\x1B[0m" << endl;
		exit(0);
	}
	if (type)
		cin.ignore(numeric_limits<streamsize>::max(), '\n');
	cin.clear();
}

string	PROJECT = "";

void	createDirAuthor(void)
{
	string login;
	struct stat	buffer;

	while (PROJECT.empty())
	{
		cout << "What's the name of the project?" << endl;
		getline(cin, PROJECT);
		if (PROJECT.empty())
			cout << "Sorry, the project name can't be empty." << endl;
		else if (stat(PROJECT.c_str(), &buffer) == 0)
		{
			cout << "Sorry, " << PROJECT << " already exists" << endl;
			PROJECT = "";
		}
		CINCLEAR(0);
	}
	cout << "What's your login?" << endl;
	getline(cin, login);
	CINCLEAR(0);

	int		fd = 0;

	cout << "\x1B[32mCreating directories..." << endl;
	system(("mkdir " + PROJECT).c_str());
	if ((fd = open(PROJECT.c_str(), O_RDONLY)) > 0)
	{
		cout << PROJECT << " has been created" << endl;
		close(fd);
	}
	else
	{
		cout << "\x1B[31mFailed to create " << PROJECT << "\x1B[0m" << endl <<
			 "Exit program ..." << endl;
		exit(0);
	}
	system(("mkdir " + PROJECT + "/srcs").c_str());
	if ((fd = open((PROJECT + "/srcs").c_str(), O_RDONLY)) > 0)
	{
		cout << PROJECT << "/srcs has been created" << endl;
		close(fd);
	}
	else
		cout << "\x1B[31mFailed to create " << PROJECT << "/srcs" << endl;
	system(("mkdir " + PROJECT + "/includes").c_str());
	if ((fd = open((PROJECT + "/includes").c_str(), O_RDONLY)) > 0)
	{
		cout << PROJECT << "/includes has been created" << endl;
		close(fd);
	}
	else
		cout << "\x1B[31mFailed to create " << PROJECT << "/includes" << endl;

	ofstream		f(PROJECT + "/author");
	
	if (f.is_open())
	   f << login << endl;
	else
		cout << "\x1B[31mFailed to create author file.\x1B[0m" << endl;
}

void	createMakefile(void)
{
	ofstream	f(PROJECT + "/Makefile");

	if (f.is_open())
	{
		f << "SRC =" << endl << endl <<
			 "OBJ =" << endl << endl <<
			 endl <<
			 "SRCDIR = srcs" << endl << endl <<
			 "OBJDIR = objs" << endl << endl <<
			 endl <<
			 "SRCS = $(addprefix $(SRCDIR)/, $(SRC))" << endl <<
			 "OBJS = $(addprefix $(OBJDIR)/, $(SRC))" << endl <<
			 endl <<
			 "HEADER = -I includes" << endl <<
			 "LIB =" << endl <<
			 endl <<
			 "CC = gcc" << endl <<
			 "CXX = g++" << endl <<
			 "ASM = as" << endl <<
			 "LINKER = ld" << endl <<
			 endl <<
			 "GFLAG = -g" << endl <<
			 "CFLAG = -c" << endl <<
			 "WFLAG = -Wall -Wextra -Werror" << endl <<
			 endl <<
			 "NAME = " << PROJECT << endl <<
			 endl <<
			 ".PHONY: all clean fclean re" << endl <<
			 ".SUFFIXES: .s .o" << endl <<
			 endl <<
			 "all: $(NAME)" << endl <<
			 endl <<
			 "#	COMPILE C" << endl <<
			 "$(OBJDIR)%.o: $(SRCDIR)/%.c" << endl <<
			 "	@mkdir -p $(OBJDIR)" << endl <<
			 "	@$(CC) $(CFLAG) $(WFLAG) $(HEADER) $< -o $@" << endl <<
			 endl <<
			 "#	COMPILE CPP" << endl <<
			 "$(OBJDIR)%.o: $(SRCDIR)/%.cpp" << endl <<
			 "	@mkdir -p $(OBJDIR)" << endl <<
			 "	@$(CXX) $(CFLAG) $(WFLAG) $(HEADER) $< -o $@" << endl <<
			 endl <<
			 "#	COMPILE ASM" << endl <<
			 "$(OBJDIR)%.o: $(SRCDIR)/%.s" << endl <<
			 "	@mkdir -p $(OBJDIR)" << endl <<
			 "	@$(ASM) $(GFLAG) $< -o $@" << endl <<
			 endl <<
			 "$(NAME): $(OBJS)" << endl <<
			 "ifneq ($(wildcard $(SRCDIR)/*.c), )" << endl <<
			 "	@$(CC) $(WFLAG) $(LIB) $(OBJS) -o $@" << endl <<
			 "else ifneq ($(wildcard $(SRCDIR)/*.cpp), )" << endl <<
			 "	@$(CXX) $(WFLAG) $(LIB) $(OBJS) -o $@" << endl <<
			 "else ifneq ($(wildcard $(SRCDIR)/*.s), )" << endl <<
			 "	@$(LINKER) $(GFLAG) $(OBJS) -o $@" << endl <<
			 "endif" << endl <<
			 endl <<
			 "	@echo \"\\1B[32m[$(NAME) Created]\\1xB[0m\"" << endl <<
			 endl <<
			 "clean:" << endl <<
			 "	@/bin/rm -rf $(OBJDIR)" << endl <<
			 "	@echo \"\\x1B[31m[Directory has been cleaned]\"" << endl <<
			 endl <<
			 "fclean: clean" << endl <<
			 "	@/bin/rm -f $(NAME)" << endl <<
			 "	@echo \"\\x1B[31m[$(NAME) has been deleted]\"" << endl <<
			 endl <<
			 "re: fclean all" << endl;
		cout << "\x1B[32mMakefile has been created\x1B[0m" << endl;
	}
	else
		cout << "\x1B[31mFailed to create Makefile.\x1B[0m" << endl;
}

void	createGitignore(void)
{
	ofstream	f(PROJECT + "/.gitignore");

	if (f.is_open())
	{
		f << "# Gitignore" << endl <<
			 ".gitignore" << endl <<
			 endl <<
			 "# Object files" << endl <<
			 "*.o" << endl <<
			 endl <<
			 "# Precompiled Headers" << endl <<
			 "*.gch" << endl <<
			 endl <<
			 "# Libraries" << endl <<
			 "*.a" << endl <<
			 endl <<
			 "# Executables" << endl <<
			 "*.exe" << endl <<
			 "*.out" << endl <<
			 endl <<
			 "# Debug Files" << endl <<
			 "*.dSYM/" << endl <<
			 endl <<
			 "# MAC OS" << endl <<
			 "*.DS_Store" << endl <<
			 "*.AppleDouble" << endl <<
			 "*.LSOverride" << endl <<
			 endl <<
			 "# Thumnails" << endl <<
			 "._*" << endl <<
			 endl <<
			 "# VIM" << endl <<
			 "[._]*.s[a-v][a-z]" << endl <<
			 "[._]*.sw[a-p]" << endl <<
			 "[._]s[a-v][a-z]" << endl <<
			 "[._]sw[a-p]" << endl <<
			 "Session.vim" << endl <<
			 ".netrwhist" << endl <<
			 "*~" << endl;
		cout << "\x1B[32m.gitignore has been created\x1B[0m" << endl;
	}
	else
		cout << "\x1B[31mFailed to create gitignore.\x1B[0m" << endl;
}

void	createLib(void)
{
	int		input = 0, fd;
	string	lib = "", addr = "";

	while (input == 0)
	{
		lib_console();
		cin >> input;
		CINCLEAR(1);
		switch (input)
		{
			case 1:
				system(("mkdir -p " + PROJECT + "/libs").c_str());
				cout << "What's the name of library?" << endl;
				getline(cin, lib);
				CINCLEAR(0);
				if ((fd = open((PROJECT + "/libs/" + lib).c_str(), O_RDONLY)) > 0)
				{
					cout << "\x1B[31mLibrary already exists\x1B[0m" << endl;
					break ;
				}
				cout << "What's the git address?" << endl;
				getline(cin, addr);
				CINCLEAR(0);
				system(("git clone " + addr + " " + PROJECT + "/libs/" + lib).c_str());
				system(("rm -rf " + PROJECT + "/libs/" + lib + "/.git").c_str());
				break ;
			case 2:
				system(("mkdir -p " + PROJECT + "/libs").c_str());
				cout << "What's the name of library?" << endl;
				getline(cin, lib);
				if ((fd = open((PROJECT + "/libs/" + lib).c_str(), O_RDONLY)) > 0)
				{
					cout << "\x1B[31mLibrary already exists\x1B[0m" << endl;
					break ;
				}
				CINCLEAR(0);
				cout << "What's the path of the library?" << endl;
				getline(cin, addr);
				CINCLEAR(0);
				system(("cp -rf " + addr + " " + PROJECT + "/libs/" + lib).c_str());
				system(("rm -rf " + PROJECT + "/libs/" + lib + "/.git").c_str());
				break ;
			case 3:
				return ;
			default:
				cout << "Error. please try again." << endl;
		}
		input = 0;
	}
}

void	project(void)
{
	CINCLEAR(1);
	createDirAuthor();
	createMakefile();
	createGitignore();
	cout << endl;
	createLib();
}

int		main(void)
{
	int		input = 0;

	while (input == 0)
	{
		main_console();
		cin >> input;
		switch (input)
		{
			case 1:
				project();
				break ;
			case 2:
				exit(0);
			default:
				CINCLEAR(1);
				input = 0;
				cout << "Error. please try again" << endl;
		}
	}
	return (0);
}
