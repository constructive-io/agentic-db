-- Revert: schemas/agent_db_app_public/tables/images/columns/entity_id/alterations/alt0000000852


ALTER TABLE agent_db_app_public.images 
  ALTER COLUMN entity_id DROP NOT NULL;


