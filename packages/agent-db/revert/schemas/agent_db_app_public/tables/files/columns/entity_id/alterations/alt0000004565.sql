-- Revert: schemas/agent_db_app_public/tables/files/columns/entity_id/alterations/alt0000004565


ALTER TABLE "agent_db_app_public".files 
  ALTER COLUMN entity_id DROP NOT NULL;


