# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: Mingyun Kim <mikim@student.42.us.org>      +#+  +:+       +#+         #
#    GitHub:  https://github.com/mikim42          +#+#+#+#+#+   +#+            #
#    Created: 2018/03/03 15:28:47 by Mingyun K         #+#    #+#              #
#    Updated: 2018/03/03 18:22:04 by Mingyun K        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_SERVER = server.c
SRC_CLIENT = client.c
SRCDIR_SERVER = srcs_server/
SRCDIR_CLIENT = srcs_client/

OBJ_SERVER = $(SRC_SERVER:.c=.o)
OBJ_CLIENT = $(SRC_CLIENT:.c=.o)
OBJDIR_SERVER = objs_server/
OBJDIR_CLIENT = objs_client/

LIBFT = libft/

SRCS_SERVER = $(addprefix $(SRCDIR_SERVER), $(SRC_SERVER))
OBJS_SERVER = $(addprefix $(OBJDIR_SERVER), $(OBJ_SERVER))

SRCS_CLIENT = $(addprefix $(SRCDIR_CLIENT), $(SRC_CLIENT))
OBJS_CLIENT = $(addprefix $(OBJDIR_CLIENT), $(OBJ_CLIENT))

LIBS = -L $(LIBFT) -lft

HEADER = -I includes -I $(LIBFT)includes

CC = gcc
CFLAG = -c
WFLAG = -Wall -Wextra -Werror

SERVER = server
CLIENT = client

.PHONY: all clean fclean re
.SUFFIXES: .c .o .s .cor

all: $(SERVER) $(CLIENT)

#COMPILING SERVER
$(OBJDIR_SERVER)%.o: $(SRCDIR_SERVER)%.c
	@/bin/mkdir -p $(OBJDIR_SERVER)
	@$(CC) $(CFLAG) $(WFLAG) $(HEADER) $< -o $@

$(SERVER): $(OBJS_SERVER)
	@make -s -C $(LIBFT)
	@$(CC) $(OBJS_SERVER) $(LIBS) -o $@
	@echo "\x1b[33;1m[$(SERVER) - 모래반지 빵야빵야!]\x1b[0m"

#COMPILING CLIENT
$(OBJDIR_CLIENT)%.o: $(SRCDIR_CLIENT)%.c
	@/bin/mkdir -p $(OBJDIR_CLIENT)
	@$(CC) $(CFLAG) $(WFLAG) $(HEADER) $< -o $@

$(CLIENT): $(OBJS_CLIENT)
	@make -s -C $(LIBFT)
	@$(CC) $(OBJS_CLIENT) $(LIBS) -o $@
	@echo "\x1b[32;1m[$(CLIENT) - 모래반지 빵야빵야!]\x1b[0m"

clean:
	@/bin/rm -rf $(OBJDIR_SERVER) $(OBJDIR_CLIENT)
	@make -s -C $(LIBFT) clean
	@echo "\x1b[35;1m[Lernaean Hydra - clean]\x1b[0m"

fclean: clean
	@/bin/rm -rf $(SERVER) $(CLIENT) $(LIBFT)libft.a
	@echo "\x1b[31;1m[Lernaean Hydra - fclean]\x1b[0m"

re: fclean all
