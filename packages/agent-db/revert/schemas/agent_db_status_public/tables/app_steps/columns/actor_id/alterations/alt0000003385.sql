-- Revert: schemas/agent_db_status_public/tables/app_steps/columns/actor_id/alterations/alt0000003385




ALTER TABLE "agent_db_status_public".app_steps 
    ALTER COLUMN actor_id DROP DEFAULT;



