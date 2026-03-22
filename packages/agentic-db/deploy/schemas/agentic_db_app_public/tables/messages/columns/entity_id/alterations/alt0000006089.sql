-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/entity_id/alterations/alt0000006089
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/meta/column
-- requires: schemas/agentic_db_app_public/tables/messages/columns/entity_id/column


ALTER TABLE agentic_db_app_public.messages 
  ALTER COLUMN entity_id SET NOT NULL;

