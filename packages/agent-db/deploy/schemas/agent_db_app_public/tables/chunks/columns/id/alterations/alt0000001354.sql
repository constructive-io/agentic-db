-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/id/alterations/alt0000001354
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/id/column
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column


ALTER TABLE agent_db_app_public.chunks 
  ALTER COLUMN id SET NOT NULL;

