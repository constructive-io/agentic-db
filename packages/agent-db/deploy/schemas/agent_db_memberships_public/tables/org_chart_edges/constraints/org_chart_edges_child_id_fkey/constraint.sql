-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/constraints/org_chart_edges_child_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  ADD CONSTRAINT org_chart_edges_child_id_fkey 
    FOREIGN KEY(child_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

