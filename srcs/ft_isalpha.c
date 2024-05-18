/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user <user@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/18 21:37:16 by user              #+#    #+#             */
/*   Updated: 2024/05/18 21:58:43 by user             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */



int ft_isalpha(int c)
{
    if (c >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z')
    {
        return (1);
    }
    return (0);
}
