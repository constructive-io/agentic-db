-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/constraints/chunks_file_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ADD CONSTRAINT chunks_repository_id_fkey 
    FOREIGN KEY(repository_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".repositories (id) 
    ON DELETE CASCADE;

