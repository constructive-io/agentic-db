-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/actor_id/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  DROP COLUMN actor_id RESTRICT;


