-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/priority/alterations/alt0000001398
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/priority/column


COMMENT ON COLUMN "agent_db_status_public".org_level_requirements.priority IS E'Display ordering priority; lower values appear first';

