# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: decordel <decordel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 04:31:57 by decordel          #+#    #+#              #
#    Updated: 2022/11/05 23:47:31 by decordel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FIRST_NAME = Colleen

all	: ${FIRST_NAME}

${FIRST_NAME} : Colleen.c
	gcc Colleen.c -o $@
	./$@ | diff Colleen.c -

clean	:
	rm -fr ${FIRST_NAME}

re	: clean all

