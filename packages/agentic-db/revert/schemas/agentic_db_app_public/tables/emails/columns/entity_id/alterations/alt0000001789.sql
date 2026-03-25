-- Revert: schemas/agentic_db_app_public/tables/emails/columns/entity_id/alterations/alt0000001789


ALTER TABLE "agentic_db_app_public".emails 
  ALTER COLUMN entity_id DROP NOT NULL;


