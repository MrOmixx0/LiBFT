.PHONY: all clean fclean re

CC = cc

CFLAGS = -Wall -Werror -Wextra

NAME = libft.a

FILES = ft_isalpha.c ft_toupper.c ft_isdigit.c ft_tolower.c ft_isalnum.c ft_strchr.c ft_isascii.c ft_strrchr.c ft_isprint.c ft_strncmp.c ft_strlen.c ft_memchr.c ft_memset.c ft_memcmp.c ft_bzero.c ft_memcpy.c ft_strnstr.c ft_memmove.c ft_atoi.c ft_strlcpy.c ft_strlcat.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJECTS = $(FILES:.c=.o)

all : $(NAME)

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $^

%.o : %.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(OBJECTS) $(NAME)

re: fclean all
