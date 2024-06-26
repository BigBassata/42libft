# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: licohen <licohen@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/18 21:37:12 by user              #+#    #+#              #
#    Updated: 2024/05/29 17:32:37 by licohen          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a
SRC		= 	ft_strlen.c   ft_toupper.c    ft_tolower.c   ft_strrchr.c    ft_strnstr.c   ft_strncmp.c \
			ft_strlcpy.c  ft_strlcat.c    ft_strchr.c    ft_memset.c     ft_memmove.c   ft_memcpy.c \
	   		ft_memcmp.c   ft_memchr.c     ft_isprint.c   ft_isdigit.c    ft_isascii.c   ft_isalpha.c \
			ft_isalnum.c  ft_isprint.c    ft_bzero.c     ft_atoi.c       ft_calloc.c    ft_strdup.c \
			ft_substr.c   ft_strjoin.c    ft_strtrim.c   ft_split.c      ft_itoa.c      ft_strmapi.c \
			ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

SRCS_B	= 	ft_lstnew_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstsize_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstadd_back_bonus.c 

OBJS	=	${SRC:.c=.o}

OBJS_B	= 	${SRCS_B:.c=.o}

CC		=	cc

CFLAGS	=	-Wall -Wextra -Werror

AR		=	ar rcs

RM		=	rm -f


.c.o:
	$(CC) -c $(CFLAGS) $< -o $@ $(INCLUDES)

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

all: ${NAME}

bonus: ${OBJS} ${OBJS_B}
	${AR} ${NAME} ${OBJS_B}

clean:
	${RM} ${OBJS} ${OBJS_B}

fclean:	clean
	${RM} ${NAME}

re:	fclean all

.PHONY:	all clean fclean re