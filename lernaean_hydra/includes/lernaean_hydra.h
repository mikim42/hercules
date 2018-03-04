/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lernaean_hydra.h                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Mingyun Kim <mikim@student.42.us.org>      +#+  +:+       +#+        */
/*   GitHub:  https://github.com/mikim42          +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/03 15:55:24 by Mingyun K         #+#    #+#             */
/*   Updated: 2018/03/03 19:02:18 by Mingyun K        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LERNAEAN_HYDRA_H
# define LERNAEAN_HYDRA_H

# include <libft.h>

typedef struct sockaddr_in s_sockaddr_in;
typedef struct sockaddr s_sockaddr;

# define BACKLOG 128

/*
**		Server
*/

int		server(int port);

/*
**		Client
*/

bool	connect_socket(s_sockaddr_in *server, int *socket_fd, char **av);
void	communicate(int socket_fd);

#endif
