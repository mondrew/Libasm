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
#include <errno.h>

char	*ft_strdup(const char *str);

int		main(void)
{
	char *str;
	char *new_str;

	str = "Hello, World!";
	new_str = ft_strdup(str);
	printf("my new_str: %s\nmy errno: %d\n", new_str, errno);
	free(new_str);
	new_str = strdup(str);
	printf("original new_str: %s\norig errno: %d\n", new_str, errno);
	free(new_str);
	return (0);
}
