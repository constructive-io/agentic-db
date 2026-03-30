-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/actor_id/column


ALTER TABLE "agentic_db_status_public".org_steps 
  DROP COLUMN actor_id RESTRICT;


