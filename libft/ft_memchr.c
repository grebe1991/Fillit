/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbuciuma <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/01/09 17:48:59 by mbuciuma          #+#    #+#             */
/*   Updated: 2017/01/09 17:49:01 by mbuciuma         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

void	*ft_memchr(const void *src, int c, size_t len)
{
	unsigned char *strsrc;

	if (src == NULL)
		return (NULL);
	strsrc = (unsigned char*)src;
	while (len > 0 && *strsrc != (unsigned char)c)
	{
		len--;
		strsrc++;
	}
	if (len == 0)
		return (NULL);
	else
		return (strsrc);
}
