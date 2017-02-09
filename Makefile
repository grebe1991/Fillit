
NAME	= fillit 

SRC		= main.c \
		  reader.c \
		  tetrimino.c \
		  map.c \
		  solver.c

OBJ		= $(addprefix $(OBJDIR),$(SRC:.c=.o))

CC		= gcc
CFLAGS	= -Wall -Wextra -Werror

LIBFT	= ./libft/libft.a
LIBINC	= -I./libft
LIBLINK	= -L./libft -lft

SRCDIR	= ./src/
INCDIR	= ./includes/
OBJDIR	= ./obj/

all: obj libft $(NAME)

obj:
	mkdir -p $(OBJDIR)

$(OBJDIR)%.o:$(SRCDIR)%.c
	$(CC) $(CFLAGS) -I $(INCDIR) -o $@ -c $< $(LIBINC)

libft: $(LIBFT)

$(LIBFT):
	make -C ./libft

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(LIBLINK)

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -rf $(NAME)

re: fclean all
