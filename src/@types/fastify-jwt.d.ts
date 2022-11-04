import '@fastify/jwt'

declare module '@fastify/jwt' {
    interface FastifyJWT {
        user: {
                sub: string;
                name: string;
                avatarURL: string;            
        }
    }
}