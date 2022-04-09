########################
######### BASE #########
########################
FROM node:16 AS base

WORKDIR /srv
RUN npm update -g

ENV HOST 0.0.0.0
EXPOSE 3000

#######################
######### DEV #########
#######################
FROM base AS dev

CMD [ "npm", "run", "dev" ]
