import { DocumentClient, DocumentRecord } from './importer';

interface DocumentModelLike {
  findFirst(args: {
    where: Record<string, unknown>;
    select: Record<string, boolean>;
  }): { execute(): Promise<{ data: unknown }> };
  findMany(args: {
    where: Record<string, unknown>;
    first?: number;
    after?: string;
    select: Record<string, boolean>;
  }): { execute(): Promise<{ data: unknown }> };
  create(args: {
    data: Record<string, unknown>;
    select: Record<string, boolean>;
  }): { execute(): Promise<{ data: unknown }> };
  update(args: {
    where: { id: string };
    data: Record<string, unknown>;
    select: Record<string, boolean>;
  }): { execute(): Promise<{ data: unknown }> };
  delete(args: {
    where: { id: string };
    select: Record<string, boolean>;
  }): { execute(): Promise<{ data: unknown }> };
}

interface SDKClientLike {
  document: DocumentModelLike;
}

const DOC_SELECT = {
  id: true,
  title: true,
  content: true,
  repoName: true,
  filePath: true,
  commitHash: true,
  tags: true,
  metadata: true,
  updatedAt: true,
};

function extractNodes(data: unknown, tableName: string): Record<string, unknown>[] {
  const d = data as Record<string, unknown>;
  const table = d?.[tableName] as Record<string, unknown> | undefined;
  return (table?.nodes as Record<string, unknown>[]) || [];
}

function toDocumentRecord(node: Record<string, unknown>): DocumentRecord {
  return {
    id: node.id as string,
    title: node.title as string | null,
    content: node.content as string | null,
    repoName: node.repoName as string | null,
    filePath: node.filePath as string | null,
    commitHash: node.commitHash as string | null,
    tags: node.tags as string[] | null,
    metadata: node.metadata as Record<string, unknown> | null,
    updatedAt: node.updatedAt as string | null,
  };
}

export function createDocumentClient(sdk: SDKClientLike): DocumentClient {
  return {
    async findByRepoAndPath(repoName: string, filePath: string): Promise<DocumentRecord | null> {
      const res = await sdk.document
        .findFirst({
          where: {
            repoName: { equalTo: repoName },
            filePath: { equalTo: filePath },
          },
          select: DOC_SELECT,
        })
        .execute();

      const nodes = extractNodes(res.data, 'documents');
      return nodes.length > 0 ? toDocumentRecord(nodes[0]) : null;
    },

    async findByRepo(repoName: string): Promise<DocumentRecord[]> {
      const all: DocumentRecord[] = [];
      let hasMore = true;
      let cursor: string | undefined;

      while (hasMore) {
        const res = await sdk.document
          .findMany({
            where: { repoName: { equalTo: repoName } },
            first: 100,
            ...(cursor ? { after: cursor } : {}),
            select: DOC_SELECT,
          })
          .execute();

        const data = res.data as Record<string, unknown>;
        const documents = data?.documents as Record<string, unknown> | undefined;
        const nodes = (documents?.nodes as Record<string, unknown>[]) || [];
        const pageInfo = documents?.pageInfo as Record<string, unknown> | undefined;

        all.push(...nodes.map(toDocumentRecord));

        hasMore = (pageInfo?.hasNextPage as boolean) || false;
        cursor = pageInfo?.endCursor as string | undefined;
      }

      return all;
    },

    async create(doc): Promise<DocumentRecord> {
      const res = await sdk.document
        .create({
          data: {
            title: doc.title,
            content: doc.content,
            repoName: doc.repoName,
            filePath: doc.filePath,
            commitHash: doc.commitHash,
            tags: doc.tags,
            metadata: doc.metadata,
          },
          select: DOC_SELECT,
        })
        .execute();

      const data = res.data as Record<string, unknown>;
      const createDoc = data?.createDocument as Record<string, unknown>;
      const node = createDoc?.document as Record<string, unknown>;
      return toDocumentRecord(node);
    },

    async update(id, patch): Promise<DocumentRecord> {
      const res = await sdk.document
        .update({
          where: { id },
          data: patch as Record<string, unknown>,
          select: DOC_SELECT,
        })
        .execute();

      const data = res.data as Record<string, unknown>;
      const updateDoc = data?.updateDocument as Record<string, unknown>;
      const node = updateDoc?.document as Record<string, unknown>;
      return toDocumentRecord(node);
    },

    async delete(id): Promise<void> {
      await sdk.document
        .delete({
          where: { id },
          select: { id: true },
        })
        .execute();
    },
  };
}
