-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/alterations/alt0000000543
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/required_count/column


COMMENT ON COLUMN agent_db_status_public.org_level_requirements.required_count IS 'Number of steps needed to satisfy this requirement';

