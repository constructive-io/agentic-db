-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/created_at/alterations/alt0000001053


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


