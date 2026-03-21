-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/actor_id/alterations/alt0000003344
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/columns/actor_id/column



ALTER TABLE agentic_db_status_public.org_achievements 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();

