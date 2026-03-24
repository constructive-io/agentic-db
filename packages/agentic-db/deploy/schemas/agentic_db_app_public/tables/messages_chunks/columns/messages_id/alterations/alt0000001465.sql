-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/columns/messages_id/alterations/alt0000001465
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/columns/messages_id/column


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ALTER COLUMN messages_id SET NOT NULL;

