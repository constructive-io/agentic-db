-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/embedding_text/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  DROP COLUMN embedding_text RESTRICT;


