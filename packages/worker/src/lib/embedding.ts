import OllamaClient from '@agentic-kit/ollama';

const OLLAMA_URL = process.env.OLLAMA_URL || 'http://localhost:11434';
const EMBEDDING_MODEL = process.env.EMBEDDING_MODEL || 'nomic-embed-text';

const ollama = new OllamaClient(OLLAMA_URL);

/** Generate an embedding vector for the given text via Ollama. */
export async function generateEmbedding(text: string): Promise<number[]> {
  return ollama.generateEmbedding(text, EMBEDDING_MODEL);
}

/** Format a number[] as a pgvector literal, e.g. '[0.1,0.2,...]'. */
export function toVectorLiteral(vec: number[]): string {
  return `[${vec.join(',')}]`;
}
