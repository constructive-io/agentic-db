-- Deploy: schemas/agent_db_app_public/tables/milestones/columns/status/alterations/alt0000002146
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/milestones/table
-- requires: schemas/agent_db_app_public/tables/milestones/columns/status/column
-- requires: schemas/agent_db_app_public/tables/milestones/columns/due_date/column



ALTER TABLE "agent_db_app_public".milestones 
    ALTER COLUMN status SET DEFAULT 'pending';

