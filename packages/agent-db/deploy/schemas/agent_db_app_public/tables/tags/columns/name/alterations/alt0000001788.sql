-- Deploy: schemas/agent_db_app_public/tables/tags/columns/name/alterations/alt0000001788
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/name/column
-- requires: schemas/agent_db_app_public/tables/tags/columns/updated_at/alterations/alt0000001787


ALTER TABLE "agent_db_app_public".tags 
  ALTER COLUMN name SET NOT NULL;

