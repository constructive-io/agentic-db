-- Deploy: schemas/agentic_db_status_public/tables/org_steps/columns/actor_id/alterations/alt0000003030
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_public/tables/org_steps/columns/actor_id/column



ALTER TABLE agentic_db_status_public.org_steps 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();

