-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/constraints/files_repository_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
  ADD CONSTRAINT files_repository_id_fkey 
    FOREIGN KEY(repository_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".repositories (id) 
    ON DELETE CASCADE;

