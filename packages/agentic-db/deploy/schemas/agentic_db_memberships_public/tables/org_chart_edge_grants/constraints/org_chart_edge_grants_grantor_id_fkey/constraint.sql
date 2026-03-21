-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/constraints/org_chart_edge_grants_grantor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  ADD CONSTRAINT org_chart_edge_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE SET NULL;

