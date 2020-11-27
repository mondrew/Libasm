/* ************************************************************************** */ /*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/27 10:33:19 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/27 15:30:11 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char	*ft_strdup(const char *str);

/*
char	*ft_strdup(const char *str)
{
	int i;
	char *new_str;

	i = 0;
	if (!(new_str = malloc(sizeof(char) * (strlen(str) + 1))))
		return (NULL);
	while (str[i])
	{
		new_str[i] = str[i];
		i++;
	}
	new_str[i] = '\0';
	return (new_str);
}
*/

int		main(void)
{
	char *str = "Hello, World!";
	char *new_str;
	new_str = strdup(str);
	printf("original new_str: %s\n", new_str);
	free(new_str);
	new_str = ft_strdup(str);
	printf("my new_str: %s\n", new_str);
	return (0);
}
