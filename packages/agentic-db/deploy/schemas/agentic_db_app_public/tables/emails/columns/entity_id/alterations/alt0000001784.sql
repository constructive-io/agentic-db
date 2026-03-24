-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/entity_id/alterations/alt0000001784
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".emails 
  ALTER COLUMN entity_id SET NOT NULL;

