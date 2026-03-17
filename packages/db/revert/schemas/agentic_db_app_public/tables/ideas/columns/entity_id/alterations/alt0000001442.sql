-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/entity_id/alterations/alt0000001442


ALTER TABLE "agentic_db_app_public".ideas 
  ALTER COLUMN entity_id DROP NOT NULL;


