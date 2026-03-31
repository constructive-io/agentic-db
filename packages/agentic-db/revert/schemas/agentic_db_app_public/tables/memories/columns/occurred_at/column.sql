-- Revert: schemas/agentic_db_app_public/tables/memories/columns/occurred_at/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN occurred_at RESTRICT;


