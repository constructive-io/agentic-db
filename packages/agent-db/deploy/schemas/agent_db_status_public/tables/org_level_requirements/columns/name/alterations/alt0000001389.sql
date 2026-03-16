-- Deploy: schemas/agent_db_status_public/tables/org_level_requirements/columns/name/alterations/alt0000001389
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_level_requirements/columns/name/column


COMMENT ON COLUMN "agent_db_status_public".org_level_requirements.name IS E'Name identifier of the requirement (matches step names)';

