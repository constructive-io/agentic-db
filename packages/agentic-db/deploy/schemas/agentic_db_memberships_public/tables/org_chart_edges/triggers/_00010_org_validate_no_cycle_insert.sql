-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/triggers/_00010_org_validate_no_cycle_insert
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_private/trigger_fns/org_org_chart_validate_no_cycle_tg


CREATE TRIGGER _00010_org_validate_no_cycle_insert
BEFORE INSERT ON agentic_db_memberships_public.org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_memberships_private.org_org_chart_validate_no_cycle_tg ( );

