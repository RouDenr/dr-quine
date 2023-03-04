# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: decordel <decordel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 04:31:57 by decordel          #+#    #+#              #
#    Updated: 2023/03/04 08:45:13 by decordel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FIRST_NAME =	Colleen/Colleen
SECOND_NAME =	Grace/Grace
THIRD_NAME =	Sully/Sully

all	: ${FIRST_NAME} ${SECOND_NAME} ${THIRD_NAME}

${FIRST_NAME} : Colleen/Colleen.c
	gcc $< -o $@
	./$@ | diff $< -

${SECOND_NAME} : Grace/Grace.c
	gcc $< -o $@; ./$@
	diff $< Grace_kid.c

${THIRD_NAME} : Sully/Sully.c
	gcc $< -o $@; ./$@
	./$@; diff $< Sully_0.c || echo -n

clean	:
	rm -fr ${FIRST_NAME} ${SECOND_NAME} ${THIRD_NAME} */*_* *_* */*/*_*

re	: clean all

