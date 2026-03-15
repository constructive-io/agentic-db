-- Revert: schemas/agent_db_app_public/tables/notes/columns/active_count/alterations/alt0000004134




ALTER TABLE "agent_db_app_public".notes 
    ALTER COLUMN active_count DROP DEFAULT;



