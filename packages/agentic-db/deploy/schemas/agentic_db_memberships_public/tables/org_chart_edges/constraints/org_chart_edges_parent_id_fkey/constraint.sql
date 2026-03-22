-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/constraints/org_chart_edges_parent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE "agentic_db_memberships_public".org_chart_edges 
  ADD CONSTRAINT org_chart_edges_parent_id_fkey 
    FOREIGN KEY(parent_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE SET NULL;

