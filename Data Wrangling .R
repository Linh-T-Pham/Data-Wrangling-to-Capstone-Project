sf <- rename(sf, Building.Area.sq.ft = X2013.Building.Area..sq..ft..)
sf <- rename(sf, EUI.kBTU.sq.ft = X2013.Site.EUI..kBtu.sq.ft..)
sf <- rename(sf, Building.Category = General.Building.Category)
sf <- rename(sf, Energy.Star.Rating = X2013.ENERGY.STAR.rating)

sf <- mutate(sf, SFPUC.Code = na_if(SFPUC.Code, 'XXX'))
sf <- mutate(sf, Energy.Star.Rating = na_if(Energy.Star.Rating, ''))

sf <- mutate(sf, Facility.Type = toTitleCase(Facility.Type))
is.na(sf$Energy.Star.Rating)
