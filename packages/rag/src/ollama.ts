/**
 * Ollama API client for embeddings and chat
 */
import { config } from './config';

export interface EmbeddingResponse {
  embedding: number[];
}

export interface ChatMessage {
  role: 'system' | 'user' | 'assistant';
  content: string;
}

export interface ChatResponse {
  message: {
    role: string;
    content: string;
  };
}

/**
 * Generate embeddings using Ollama nomic-embed-text
 */
export async function embed(text: string): Promise<number[]> {
  const response = await fetch(`${config.ollamaUrl}/api/embeddings`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      model: config.embeddingModel,
      prompt: text,
    }),
  });

  if (!response.ok) {
    throw new Error(`Ollama embed failed: ${response.status}`);
  }

  const data = await response.json() as EmbeddingResponse;
  return data.embedding;
}

/**
 * Chat with Ollama LLM
 */
export async function chat(messages: ChatMessage[]): Promise<string> {
  const response = await fetch(`${config.ollamaUrl}/api/chat`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      model: config.chatModel,
      messages,
      stream: false,
    }),
  });

  if (!response.ok) {
    throw new Error(`Ollama chat failed: ${response.status}`);
  }

  const data = await response.json() as ChatResponse;
  return data.message.content;
}

/**
 * Format vector for PostgreSQL (pgvector format)
 */
export function vectorToString(vec: number[]): string {
  return `[${vec.join(',')}]`;
}
