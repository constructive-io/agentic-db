-- Revert: schemas/agentic_db_app_public/tables/template_chunks/constraints/template_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".template_chunks 
  DROP CONSTRAINT template_chunks_pkey;


