-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/constraints/chunks_file_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/constraints/files_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ADD CONSTRAINT chunks_file_id_fkey 
    FOREIGN KEY(file_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-app-public".files (id) 
    ON DELETE CASCADE;

