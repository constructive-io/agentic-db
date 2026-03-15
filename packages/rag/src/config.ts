/**
 * RAG Configuration
 */
import * as dotenv from 'dotenv';
import { resolve } from 'path';

// Assume running from package root
dotenv.config({ path: resolve(__dirname, '../../../.env') });

export const config = {
  databaseName: process.env.DATABASE_NAME || 'agentic-db-1772448876647',
  accessToken: process.env.ACCESS_TOKEN || '',
  
  // Ollama config
  ollamaUrl: process.env.OLLAMA_URL || 'http://localhost:11434',
  embeddingModel: process.env.EMBEDDING_MODEL || 'nomic-embed-text',
  chatModel: process.env.CHAT_MODEL || 'llama3.2',
  
  // GraphQL endpoints
  graphqlUrl: 'http://[::1]:3000/graphql',
  
  get authHost() {
    return `auth-${this.databaseName}.localhost:3000`;
  },
  get appHost() {
    return `app-public-${this.databaseName}.localhost:3000`;
  },
};
