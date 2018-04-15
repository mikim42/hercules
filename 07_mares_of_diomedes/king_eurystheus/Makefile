# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/14 20:08:21 by mikim             #+#    #+#              #
#    Updated: 2018/04/14 20:38:41 by mikim            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# **************************************************************************** #
#                                                               Mingyun Kim    #
#                                            https://www.github.com/mikim42    #
# **************************************************************************** #

SRC = eurystheus.c
OBJ = $(SRC:.c=.o)

SRCDIR = srcs
OBJDIR = objs
LIBDIR = libft

SRCS = $(addprefix $(SRCDIR)/, $(SRC))
OBJS = $(addprefix $(OBJDIR)/, $(OBJ))
LIBS = -L $(LIBDIR) -lft
HEADER = -I $(LIBDIR)/includes

CC = gcc
CFLAGS = -c -Wall -Wextra -Werror

NAME = eurystheus

.PHONY: all clean fclean re
.SUFFIXES: .c .o

all: $(NAME)

$(OBJDIR)/%.o: $(SRCDIR)/%.c
	@mkdir -p $(OBJDIR)
	@$(CC) $(CFLAGS) $(HEADER) $< -o $@

$(NAME): $(OBJS)
	@make -C $(LIBDIR)
	@$(CC) $(OBJS) $(LIBS) -o $@
	@echo "\x1b[32;1m[$(NAME) - 모래반지 빵야빵야!]\x1b[0m"

clean:
	@echo "\x1b[35;1m[Cleaning the repo...]\x1b[0m"
	@/bin/rm -rf $(OBJDIR)
	@make -C $(LIBDIR) clean
	@echo "\x1b[35;1m[clean - done]\x1b[0m"

fclean: clean
	@echo "\x1b[31m[Deleting $(NAME)...]\x1b[0m"
	@/bin/rm -f $(NAME)
	@rm -f $(LIBDIR)/libft.a
	@echo "\x1b[31;1m[fclean - done]\x1b[0m"

re: fclean all
