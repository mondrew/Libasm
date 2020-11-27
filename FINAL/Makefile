# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mondrew <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/28 21:00:51 by mondrew           #+#    #+#              #
#    Updated: 2020/07/28 21:11:29 by mondrew          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS = ft_read.s \
	   ft_write.s \
	   ft_strlen.s \
	   ft_strcpy.s \
	   ft_strcmp.s \
	   ft_strdup.s

OBJECTS = $(SRCS:.s=.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJECTS)
	@echo "Compiling... Please wait..."
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)
	@echo "Successfully compiled!"

%.o: %.s
	@nasm -f elf64 $< -o $@

clean:
	@/bin/rm -f $(OBJECTS)
	@echo "Object files have been successfully deleted!"

fclean: clean
	@/bin/rm -f $(NAME)
	@echo "Library has been successfully deleted!"

re: fclean clean
