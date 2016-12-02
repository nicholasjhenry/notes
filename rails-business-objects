    add_association!(attribute1, attriute2) # i.e. no hash of params
    add_association(attribute1, attriute2) # i.e. no hash of params
    remove_association
    fetch_...

    def add_association!(attribute1, attribute2)
      association.new(
        attribute1: attribute1,
        attribute2: attribute2
      ).tap(&:save!)
    end
