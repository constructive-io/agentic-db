-- Revert: schemas/agent_db_app_public/tables/attachments/columns/entity_id/alterations/alt0000000941


ALTER TABLE agent_db_app_public.attachments 
  ALTER COLUMN entity_id DROP NOT NULL;


