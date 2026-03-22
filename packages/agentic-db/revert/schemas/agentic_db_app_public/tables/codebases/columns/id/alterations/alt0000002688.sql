-- Revert: schemas/agentic_db_app_public/tables/codebases/columns/id/alterations/alt0000002688


ALTER TABLE agentic_db_app_public.codebases 
  ALTER COLUMN id DROP NOT NULL;


