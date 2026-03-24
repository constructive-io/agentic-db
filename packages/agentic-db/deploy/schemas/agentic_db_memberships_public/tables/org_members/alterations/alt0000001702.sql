-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/alterations/alt0000001702
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_memberships_public.org_members IS E'Simplified view of active members in an entity, used for listing who belongs to an org or group';

