/**
 * Ollama API client for embeddings and chat via agentic-kit
 */
import { config } from './config';
import OllamaClient, { ChatMessage } from '@agentic-kit/ollama';

export type { ChatMessage };

const client = new OllamaClient(config.ollamaUrl);

/**
 * Generate embeddings using Ollama nomic-embed-text via agentic-kit
 */
export async function embed(text: string): Promise<number[]> {
  return client.generateEmbedding(text, config.embeddingModel);
}

/**
 * Chat with Ollama LLM via agentic-kit
 */
export async function chat(messages: ChatMessage[]): Promise<string> {
  const result = await client.generate({
    model: config.chatModel,
    messages,
  });
  return result as string;
}

/**
 * Format vector for PostgreSQL (pgvector format)
 */
export function vectorToString(vec: number[]): string {
  return `[${vec.join(',')}]`;
}
