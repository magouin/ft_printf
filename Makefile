# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: magouin <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/12/17 19:23:46 by magouin           #+#    #+#              #
#    Updated: 2016/01/18 17:19:11 by magouin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_NAME = ft_printf.c  \
		   converse.c  \
		   flags.c	\
		   test1.c \
		   test2.c \
		   ft_plus.c \
		   ft_zero.c \
		   ft_chiffre.c \
		   ft_atoi.c \
		   ft_bzero.c \
		   ft_itoa.c \
		   ft_itoa_base.c \
		   ft_itoa_base_long.c \
		   ft_itoa_base_u.c \
		   ft_itoa_base_u_long.c \
		   ft_itoa_long.c \
		   ft_itoa_u.c \
		   ft_itoa_u_long.c \
		   ft_putchar.c \
		   ft_putstr.c \
		   ft_strlen.c \
		   ft_toupper.c \

INC_PATH = ./includes

NAME = libftprintf.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra -c

OBJ_NAME = $(SRC_NAME:.c=.o)

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
INC = $(addprefix -I,$(INC_PATH))

all : $(NAME)

$(NAME) :
	$(CC) $(CFLAGS) $(INC) $(SRC_NAME)
	ar r $(NAME) $(OBJ_NAME)
	ranlib $(NAME)

clean:
	    rm -fv $(OBJ_NAME)
	
fclean: clean
	rm -fv $(NAME)
	rm -rf lib/

re: fclean all

.PHONY : all clean fclean re
