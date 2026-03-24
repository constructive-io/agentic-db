-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/alterations/alt0000001386
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_memberships_public.app_memberships IS E'Tracks membership records linking actors to entities with permission bitmasks, ownership, and admin status';

