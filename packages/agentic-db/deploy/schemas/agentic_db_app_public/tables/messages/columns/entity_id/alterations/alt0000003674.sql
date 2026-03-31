-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/entity_id/alterations/alt0000003674
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN entity_id SET NOT NULL;

