-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/columns/priority/alterations/alt0000001392
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/columns/priority/column


COMMENT ON COLUMN "agentic_db_status_public".org_level_requirements.priority IS E'Display ordering priority; lower values appear first';

