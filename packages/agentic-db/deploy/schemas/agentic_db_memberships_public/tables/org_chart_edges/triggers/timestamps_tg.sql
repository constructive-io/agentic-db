-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON "agentic_db_memberships_public".org_chart_edges
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

