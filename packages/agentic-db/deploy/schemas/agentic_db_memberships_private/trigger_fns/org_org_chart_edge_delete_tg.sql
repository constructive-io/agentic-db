-- Deploy: schemas/agentic_db_memberships_private/trigger_fns/org_org_chart_edge_delete_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE FUNCTION agentic_db_memberships_private.org_org_chart_edge_delete_tg() RETURNS TRIGGER AS $_PGFN_$

            BEGIN
                PERFORM agentic_db_memberships_private.org_rebuild_org_hierarchy_sprt(OLD.entity_id);
                RETURN OLD;
            END;
        
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

